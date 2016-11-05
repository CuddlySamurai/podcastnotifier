#params for serial port
port_str = "/dev/ttyUSB0"  #may be different for you
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE


$arduinoSocket = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)
