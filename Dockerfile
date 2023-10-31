FROM rikorose/gcc-cmake:latest
WORKDIR /project

COPY . /project

ARG BUILD_EXECUTABLE
ENV BUILD_EXECUTABLE=${BUILD_EXECUTABLE}

RUN mkdir -p build && \
    cd build && \
    cmake .. -DBUILD_EXECUTABLE="${BUILD_EXECUTABLE}" && \
    cmake --build . -j

RUN ls build
