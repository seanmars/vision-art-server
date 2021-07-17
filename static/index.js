const getPalette = async (palette, count) => {
    let searchParams = new URLSearchParams();
    searchParams.append('num', count);
    const url = `/palette/${palette}?${searchParams.toString()}`;
    return fetch(url)
}

window.onload = async (event) => {
    const root = document.getElementById('root');

    let palette = '3939e2-886f84-defd0f-b43150-31b1d4';
    let count = 10
    getPalette(palette, count)
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

                /**
                 * <svg width="20" height="20">
                 <rect width="20" height="20" style="fill:#E9E612;stroke-width:3;stroke:rgb(0,0,0)" />
                 </svg>
                 */


                let div = document.createElement('div');

            });

        })
        .catch(error => console.error(error));
};