FROM rikorose/gcc-cmake:latest
WORKDIR /project

COPY . /project

RUN ls build

RUN mkdir -p build && \
    cd build && \
    cmake .. -DBUILD_EXECUTABLE="${BUILD_EXECUTABLE}" && \
    cmake --build . -j

RUN ls build
