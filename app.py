import json

from flask import Flask, request, render_template

from data_manager import DataManager
from palette_embedding import PaletteEmbeddingModel, PaletteSearchIndex

app = Flask(__name__)
data_manager = DataManager()
model = PaletteEmbeddingModel()
palette_index = PaletteSearchIndex(model, data_manager.get_data())
default_num_neighbors = 10


@app.route('/')
def hello():
    return render_template('index.html')


@app.route('/palette/<palette>', methods=['GET', 'POST'])
def request_similar_vision(palette: str):
    num_neighbors = request.args.get('num', default=default_num_neighbors, type=int)
    indices, distances = palette_index.GetNearestNeighbors(palette, num_neighbors)
    image_infos = data_manager.get_palettes(indices)
    return {
        'images': image_infos,
        'distances': distances
    }


if __name__ == '__main__':
    app.run()
