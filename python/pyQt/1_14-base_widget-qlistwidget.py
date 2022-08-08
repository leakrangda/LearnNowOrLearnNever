import sys
from PyQt5.QtWidgets import QApplication, QListWidget, QMainWindow

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("My App")

        widget = QListWidget()
        widget.addItems(["one", "two", "three"])

        # in QListWidget there are two sepaate signals for the item, 
        # and the str

        widget.currentItemChanged.connect(self.index_changed)
        widget.currentTextChanged.connect(self.text_changed)

        self.setCentralWidget(widget)

    def index_changed(self, i): # Non and index, i is a QListItem
        print(i.text())
        
    def text_changed(self, s):  # s is a str
        print(s)

app = QApplication(sys.argv)
window = MainWindow()
window.show()
app.exec_()
