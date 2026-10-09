#include "mainwindow.h"
#include <laterographics/generator.h>

MainWindow::MainWindow(const latero::Tactograph *dev, latero::graphics::GeneratorPtr gen) :
	preview_(dev)
{
	auto widget = gen->CreateWidget(gen);

	auto box = Gtk::make_managed<Gtk::Box>(Gtk::Orientation::VERTICAL);
	set_child(*box);
	box->append(preview_);
	box->append(*widget);

	preview_.SetGenerator(gen);

	set_title("Latero Graphics Example");
	set_size_request(1000,800);
	maximize();
};

MainWindow::~MainWindow()
{
}