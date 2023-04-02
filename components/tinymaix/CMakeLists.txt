file(GLOB_RECURSE TM_SOURCES TinyMaix/src/*.c)

file(GLOB_RECURSE TEST_SOURCES test/*.c)

armino_component_register(
            SRCS 
              ${TM_SOURCES}
              ${TEST_SOURCES}
            INCLUDE_DIRS "." "TinyMaix/src")