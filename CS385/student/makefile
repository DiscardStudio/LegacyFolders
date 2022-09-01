CXX		 = g++
CXX_FILE = $(wildcard *.cpp)
TARGET	 = $(patsubst %.cpp,%,$(CXX_FILE))
CXXFLAGS = -g -Wall -Werror -pedantic-errors -fmessage-length=0

all:
	$(info CXX_FILE is $(CXX_FILE))
	$(info TARGET is $(TARGET))
	$(CXX) $(CXXFLAGS) $(CXX_FILE) -o $(TARGET)
clean:
	rm -f &(TARGET) $(TARGET).exe