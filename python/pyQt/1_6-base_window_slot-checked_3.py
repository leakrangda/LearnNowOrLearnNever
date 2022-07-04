import sys

from PyQt5.QtCore import QSize, Qt
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton
from sqlalchemy import true

# sublcass QMainWindow to customize your application's main window
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("My App")
        self.button_is_checked = True

        self.button = QPushButton("Press Me!")
        self.button.setCheckable(True)
        self.button.released.connect(self.the_button_was_released) 
        self.button.setChecked(self.button_is_checked)

        # Set the central widget of the Windows.
        self.setCentralWidget(self.button)
    
    def the_button_was_released(self):
        self.button_is_checked = self.button.isChecked() 

        print(self.button_is_checked)


app = QApplication(sys.argv)
window = MainWindow()
window.show()
app.exec_()