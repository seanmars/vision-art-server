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

window.onload = async (event) => {
    const root = document.getElementById('root');

    let targetPalette = '3939e2-886f84-defd0f-b43150-31b1d4';
    let count = 10

    // target palette color
    let targetPaletteDiv = document.createElement('div');
    root.appendChild(targetPaletteDiv);
    addColorElement(targetPalette, targetPaletteDiv);

    root.appendChild(document.createElement('hr'));

    getPalette(targetPalette, count)
        .then(response => response.json())
        .then(data => {
            const {
                /**  @type {Array<number>} images */
                distances,
                /**  @type {Array<Object>} images */
                images
            } = data;

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