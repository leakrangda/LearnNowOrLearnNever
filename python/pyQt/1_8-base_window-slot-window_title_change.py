from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton
from PyQt5.QtCore import Qt

import sys
from random import choice

window_titles = [
    "my app",
    "my app",
    "still my app",
    "still my app",
    "what on earth",
    "what on earth",
    "this is suprising",
    "this is suprising",
    "something went wrong"
]

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("my app")
        self.button = QPushButton("Press Me!")
        self.button.clicked.connect(self.the_button_was_clicked)
        
        self.windowTitleChanged.connect(self.the_window_title_changed)

        # set the central widget of the window.
        self.setCentralWidget(self.button)

    def the_button_was_clicked(self):
        print("Clicked")
        new_window_title = choice(window_titles)
        print("Setting title: %s" % new_window_title)
        self.setWindowTitle(new_window_title)
        
    def the_window_title_changed(self):
        print("Window Title changed: %s" % self.windowTitle())
        
        if self.windowTitle() == 'something went wrong':
            self.button.setDisabled(True)

app = QApplication(sys.argv)

window = MainWindow()
window.show()

app.exec_()