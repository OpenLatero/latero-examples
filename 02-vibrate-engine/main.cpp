#include <iostream>
#include <chrono>
#include <thread>
#include "vibrationgenerator.h"
#include <laterographics/tactileengine.h>

int main(int argc, char *argv[])
{
	latero::Tactograph dev;
	VibrationGeneratorPtr gen = VibrationGenerator::Create(&dev);

	std::cout << "Starting tactile engine...\n";
	latero::graphics::TactileEngine tEngine(&dev, 750.0);
	tEngine.SetGenerator(gen);
	tEngine.Start();

	double frequency = 1.0;
	while (frequency <= 128.0)
	{
		std::cout << "Frequency: " << frequency << " Hz\n";
		gen->SetFrequency(frequency);
		std::this_thread::sleep_for(std::chrono::seconds(10));
		frequency *= 2;
	}

	std::cout << "Stopping tactile engine...\n";
	tEngine.Stop();

	return 0;
}
