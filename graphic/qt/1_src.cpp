//1 qt
#include <QApplication>
#include <QLabel>
int main(int argc, char *argv[]){
	QApplication app(argc, argv);
	QLabel *laber = new QLabel("hello QT!");
	laber->show();
	return app.exec();
}
