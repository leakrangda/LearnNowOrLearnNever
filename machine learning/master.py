import live_plot
import tkinter as tk
from tkinter import ttk


win = tk.Tk()

def aksi():
    dialog = live_plot.Window(win)
    
button1 = ttk.Button(win, text="klik", command=aksi)
button1.pack()
win.mainloop()

