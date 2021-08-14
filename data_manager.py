import numpy as np
from guppy import hpy

from db.db_context import session_factory
from modules.image_palette import ImagePalette


class DataManager:

    def __init__(self):
        self._images = list()
        with session_factory() as session:
            image_palettes = session.query(ImagePalette).all()
            for o in image_palettes:
                self._images.append(o.__dict__)

    def get_data(self):
        return [v['palette'] for v in self._images]

    def get_palettes(self, indices):
        if len(indices) == 0:
            return None

        tmp = np.array(self._images)
        result = []
        for o in list(tmp[indices]):
            result.append({
                'file_name': o['name'],
                'url': o['url'],
                'palette': o['palette']
            })

        return result

    @property
    def images(self):
        return self._images


def main():
    manager = DataManager()
    manager.get_data()


if __name__ == '__main__':
    hxx = hpy()
    heap = hxx.heap()
    main()
    print(heap)
