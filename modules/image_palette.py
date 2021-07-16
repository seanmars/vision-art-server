from sqlalchemy import Sequence
from sqlalchemy import Column, Integer, String

from db.db_context import Base


class ImagePalette(Base):
    __tablename__ = 'color_palette'
    image_id = Column(Integer, Sequence('id'), primary_key=True)
    name = Column(String)
    url = Column(String)
    palette = Column(String)

    def __init__(self, name: str, url: str, palette: str):
        self.image_id = None
        self.name = name
        self.url = url
        self.palette = palette
