INCLUDEDIR=../../../include
LIBDIR=../../../lib64

ifdef VIX_AIO_BUFPOOL_SIZE
CXXFLAGS+= -DVIX_AIO_BUFPOOL_SIZE=$(VIX_AIO_BUFPOOL_SIZE)
endif

all: vix-disklib-sample vix-mntapi-sample

vix-disklib-sample: vixDiskLibSample.cpp
	$(CXX) $(CXXFLAGS) -o $@ -I$(INCLUDEDIR) -L$(LIBDIR) $? -ldl -lvixDiskLib

vix-mntapi-sample:  vixDiskLibSample.cpp
	$(CXX) $(CXXFLAGS) -o $@ -DFOR_MNTAPI -I$(INCLUDEDIR) -L$(LIBDIR) $? -ldl -lvixDiskLib -lvixMntapi

clean:
	$(RM) -f vix-disklib-sample vix-mntapi-sample

