import tkinter as Tk
from matplotlib import pyplot as plt
import matplotlib.animation as animation
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg

class Window(Tk.Toplevel):
    def __init__(self,master):
        super().__init__()
        self.xar = []
        self.yar = []

        frame = Tk.Frame(self)
        self.transient = master
        self.grab_set()

        self.fig = plt.figure(figsize=(14, 4.5), dpi=100)

        self.ax = self.fig.add_subplot(1,1,1)
        self.ax.set_ylim(0, 100)
        self.line, = self.ax.plot(self.xar, self.yar)

        self.canvas = FigureCanvasTkAgg(self.fig, master=self)
        self.canvas.draw()
        self.canvas.get_tk_widget().pack(side='top', fill='both', expand=1)
        frame.pack()
        ani = animation.FuncAnimation(self.fig, self.animate, interval=1000, blit=False)
        self.mainloop()

       
    def animate(self,i):
        self.yar.append(99-i)
        self.xar.append(i)
        self.line.set_data(self.xar, self.yar)
        self.ax.set_xlim(0, i+1)
        print("hai:",i)
    