FROM rikorose/gcc-cmake:latest
WORDIR /project

COPY . /project

RUN mkdir -p build && \
    cd build && \
    cmake .. -DBUILD_EXECUTABLE="${BUILD_EXECUTABLE}" && \
    cmake --build . -j
