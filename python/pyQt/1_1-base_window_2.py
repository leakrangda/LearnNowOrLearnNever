from PyQt5.QtWidgets import QApplication, QMainWindow
# only needed for access to command line argument
import sys

# you need one (and only one) QApplication instance per application.
# pass in sys.argv to allow command line argumnts for your app.
# if you know you won't use command line arguments QApplication([])
# works too.

app = QApplication(sys.argv)

# create a Qt wiget, which will be our window.
window = QMainWindow()
window.show()   # IMPORTANT!!! windows are hidde by default.

# start the event loop.
app.exec_()

# your application won't reach here until you exit and the event
# loop has stopped