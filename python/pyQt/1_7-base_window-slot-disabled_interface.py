import sys

from PyQt5.QtCore import QSize, Qt
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton
from sqlalchemy import true

# sublcass QMainWindow to customize your application's main window
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("My App")

        self.button = QPushButton("Press Me!")
        self.button.setCheckable(True)
        self.button.clicked.connect(self.the_button_was_clicked)

        # Set the central widget of the Windows.
        self.setCentralWidget(self.button)
    
    def the_button_was_clicked(self, checked):
        self.button.setText("you already clicked me")
        self.button.setEnabled(False)
        print(checked)


app = QApplication(sys.argv)
window = MainWindow()
window.show()
app.exec_()