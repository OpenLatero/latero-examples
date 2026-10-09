#include "vibrationgeneratorwidget.h"

VibrationGeneratorWidget::VibrationGeneratorWidget(VibrationGeneratorPtr peer) :
	Gtk::Box(Gtk::Orientation::HORIZONTAL, 6),
	peer_(peer)
{
	set_halign(Gtk::Align::CENTER);

	auto label = Gtk::make_managed<Gtk::Label>("Frequency (Hz)");
	append(*label);

	adj_ = Gtk::Adjustment::create(peer_->GetFrequency(), 0.0, 200.0, 0.1, 10.0);
	adj_->signal_value_changed().connect(sigc::mem_fun(*this, &VibrationGeneratorWidget::OnChanged));

	auto spin = Gtk::make_managed<Gtk::SpinButton>(adj_, 0.1, 1);
	append(*spin);
}

void VibrationGeneratorWidget::OnChanged()
{
	peer_->SetFrequency(adj_->get_value());
}
