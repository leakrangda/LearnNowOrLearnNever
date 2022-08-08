import sys

from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QApplication, QComboBox, QMainWindow

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("My App")

        widget = QComboBox()
        widget.addItems(["one", "two", "three"])
        
        widget.currentIndexChanged.connect(self.index_chaged)
        widget.currentTextChanged.connect(self.text_changed)

        self.setCentralWidget(widget)

    def index_chaged(self, i):
        print(i)

    def text_changed(self, s):
        print(s)

app = QApplication(sys.argv)

window = MainWindow()
window.show()

app.exec_()
