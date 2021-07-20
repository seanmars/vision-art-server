jscolor.presets.default = {
    format: 'hex',
    alphaChannel: false
};

const getPalette = async (palette, count) => {
    let searchParams = new URLSearchParams();
    searchParams.append('num', count);
    const url = `/palette/${palette}?${searchParams.toString()}`;
    return fetch(url)
}

const addColorElement = (palette, targetElement) => {
    const palettes = palette.split('-');
    let divPalettes = document.createElement('div');
    divPalettes.className = 'row';
    palettes.forEach(color => {
        let block = document.createElement('div');
        block.className = 'box';
        block.style.backgroundColor = `#${color}`;

        divPalettes.appendChild(block);
    });
    targetElement.appendChild(divPalettes);
}

const deleteAllResult = () => {
    const root = document.getElementById('root');
    const divs = document.getElementsByClassName('result');
    [...divs].forEach(e => {
        root.removeChild(e);
    });
};

const handlePaletteClick = () => {
    const root = document.getElementById('root');

    const clrDivs = document.getElementsByClassName('clr-input');
    const tmp = _.map([...clrDivs], (e) => _.trimStart(e.value, '#'));

    const targetPalette = _.join(tmp, '-');
    let count = 10;

    console.log(targetPalette);

    getPalette(targetPalette, count)
        .then(response => response.json())
        .then(data => {
            const {
                /**  @type {Array<number>} images */
                distances,
                /**  @type {Array<Object>} images */
                images
            } = data;

            deleteAllResult();

            if (!images) {
                return;
            }

            images.forEach((v, idx) => {
                const distance = distances[idx];
                const {
                    /** @type {string} file_name */
                    file_name,
                    /** @type {string} palette */
                    palette
                } = v;

                // parent
                let resultPaletteDiv = document.createElement('div');
                resultPaletteDiv.className = 'result';
                root.appendChild(resultPaletteDiv);
                // palette color
                addColorElement(palette, resultPaletteDiv);
                // distance
                let textDiv = document.createElement('div');
                textDiv.className = 'text';
                textDiv.innerText = `distance: ${distance}`;
                let distanceDiv = document.createElement('div');
                distanceDiv.className = 'row';
                distanceDiv.appendChild(textDiv);
                resultPaletteDiv.appendChild(distanceDiv);
            });
        })
        .catch(error => console.error(error));
};

window.onload = async (event) => {
    const root = document.getElementById('root');
    root.appendChild(document.createElement('hr'));
};