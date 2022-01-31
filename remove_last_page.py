import os
import sys

from pdfrw import PdfReader, PdfWriter


class Writer:
    def __init__(self, out_file_path):
        self.writer = PdfWriter(out_file_path)
        self.current_page = 1

    def add_page(self, page):
        self.writer.addPage(page)
        self.current_page += 1

    def write(self):
        self.writer.write()


pdf_path = sys.argv[1]
base_pages = PdfReader(pdf_path).pages
# remove last
base_pages = base_pages[:-1]

out_pdf_path = os.path.splitext(pdf_path)[0] + "_final.pdf"
writer = Writer(out_pdf_path)
for page in base_pages:
    writer.add_page(page)
writer.write()
