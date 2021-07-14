DATA_PALETTES = (
    '85837c-d2d1d0-9b7360-e4e3e2-b5ab98',
    '91928f-204034-a3a7a5-799b7c-3b6b58',
    '989b92-5a5a35-484826-495a42-957253',
    '6e7b54-ededab-484826-495a42-5e4127',
    '747e55-97a377-2c3933-516753-724639',
    'ffffff-d3cac1-ded5cb-171512-100d0a',
    '0f1211-a1b0b3-505c5d-2e3739-6b7e86',
    '17171b-edd97a-58585e-3f3e47-696768',
    '221e22-c9b5a0-28374c-324258-9c836f',
    '1a1e20-5b6457-978758-333e39-a4937c',
    '774d3d-5b6065-8d7357-a59289-4d423b',
    '818788-78371b-3a2c2b-9b8574-565959',
    '171511-2e3117-a2947f-653c22-3c4911',
    'a8a28e-282313-53482b-8a6d45-787f7a',
    '21181a-8e5d35-9e371f-5c3629-c3a07e',
    '9e724f-33473f-a44328-28335a-453033',
    '28292d-39504a-a09268-69473c-2d383c',
    '314435-b27817-455266-9a3c34-bb9e82',
    '283130-a05b3b-33745e-52382f-988d7a',
    '213b41-5d4538-477e92-c0b69e-163a60',
    '9fb6bb-809daa-5b6c90-bbc5c4-4f777b',
    '474961-cab65e-a16f42-5a4b3f-a49885',
    '4b5b7a-c7a614-a03023-464f72-695319',
    '8c7344-9e841e-919c93-3c4438-7f4815',
    '644c2c-edddc6-992c2e-4b3b2d-8a693e',
    'efece5-8aa9af-d7cfbc-5c828c-b9a47e',
    'daae2f-b3a886-b45b1e-745136-c3b05c',
    '342b29-b6996f-5e5743-214440-82462b',
    '947c3c-6f6747-4c3f27-b79f55-879e88',
    'e8e1c8-b79173-bbb69d-f6f3e8-84866d',
    'c1cebd-f9e37c-fbf3dd-f8e8aa-e4e2cf',
    'bea67a-3c5143-d4d2bd-ad7f42-858e81',
    '9c9a95-555864-c2c2bf-b59e70-7e6844',
)


class DataManager:

    def __init__(self):
        self._images = dict()
        for idx, val in enumerate(DATA_PALETTES):
            self._images.update({idx: val})

    def get_data(self):
        return [v for k, v in self._images.items()]


def main():
    manager = DataManager()
    data = manager.get_data()
    print("{}".format(data))


if __name__ == '__main__':
    main()
