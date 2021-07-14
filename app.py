from flask import Flask, request

from data_manager import DataManager
from palette_embedding import PaletteEmbeddingModel, PaletteSearchIndex

app = Flask(__name__)
data_manager = DataManager()
model = PaletteEmbeddingModel()
palette_index = PaletteSearchIndex(model, data_manager.get_data())
default_num_neighbors = 10


@app.route('/<palette>', methods=['GET', 'POST'])
def request_similar_vision(palette: str):
    num_neighbors = request.args.get('num', default=default_num_neighbors, type=int)
    indices, distances = palette_index.GetNearestNeighbors(palette, num_neighbors)
    return {
        "indices": indices,
        "distances": distances
    }


if __name__ == '__main__':
    app.run()
