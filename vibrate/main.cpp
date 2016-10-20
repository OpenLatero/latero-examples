#include <latero/tactiledisplay.h>

/**
 * Compute the position of a pin. The index of the pin is specified by x (column) and y (row), starting
 * from the upper-left corner (with the connector on the left of the Latero). The current time is
 * specified by t. The function returns a value between -1.0 (left) and +1.0 (right). 
 *
 * This function makes the pins vibrate at 1 Hz, with adjacent rows having an opposite phase.
 */
double ComputePinPosition(unsigned int x, unsigned int y, boost::posix_time::time_duration t)
{
    // Specify the vibration frequency. Currently 1 Hz.
    const double frequency = 1.0; // in Hertz

    // Convert the Boost time to a number of seconds, as a floating point number.
    long microseconds = t.total_microseconds();
    double seconds = (double)microseconds / (double)1E6;

    // Compute the vibration as a sine, based on the current time.
    double v = sin(2*M_PI*seconds*frequency);
    
    // Invert the output for odd rows.
    if (y%2==1)
        v *= -1;
    
    return v;
}


int main(int argc, char* argv[])
{
    // Create a latero::TactileDisplay object that will be used to communicate with the Latero.
    latero::TactileDisplay* dev = new latero::TactileDisplay();
    
    // Note the start time using the cross-platform Boost Date-Time library.
    boost::posix_time::ptime startTime = boost::posix_time::microsec_clock::universal_time();
    
    // Note the time elapsed since start time.
    boost::posix_time::time_duration currentTime =
        boost::posix_time::microsec_clock::universal_time() - startTime;
    
    // Run for one minute.
    while (currentTime < boost::posix_time::minutes(1))
    {
        // Query the device for the size of a frame (number of pins).
        uint sx = dev->GetFrameSizeX();
        uint sy = dev->GetFrameSizeY();
        
        // Create a tactile image that will specify the position of each pin. The RangeImg
        // uses a value between -1.0 (left) and +1.0 (right) to specify the position of a pin.
        // See tactileimg.h in Latero for other possible encodings.
        latero::RangeImg img(sx, sy);
        
        // For each pin, call a function that will compute the position of the pin based on the
        // pin (x, y) and the current time.
        for (uint y=0; y<sy; ++y)
        {
            for (uint x=0; x<sx; ++x)
            {
                float v = ComputePinPosition(x, y, currentTime);
                img.Set(x,y,v);
            }
        }
        
        // Send the tactile image to the device.
        dev->WriteFrame(img);
        
        // Update the current time.
        currentTime = boost::posix_time::microsec_clock::universal_time() - startTime;
    }
    
    // Delete the Tactile Display. This will close the connection to the device.
    delete dev;
    
    return 0;
};
