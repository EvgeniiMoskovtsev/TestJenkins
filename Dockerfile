FROM rikorose/gcc-cmake:latest
WORKING /project

COPY . /project

RUN mkdir -p build && \
    cd build && \
    cmake .. -DBUILD_EXECUTABLE="${BUILD_EXECUTABLE}" && \
    cmake --build . -j