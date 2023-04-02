set(incs 
    .
)
set(srcs
    
)

message(${ARMINO_SOC})

if (CONFIG_SLAVE_CORE)
    message("build app1")
    list(APPEND srcs
        app1.c
    )
else()
    message("build app0")
    
    list(APPEND srcs
        app0.c
    )
    
    list(APPEND incs

    )
endif()

armino_component_register(SRCS "${srcs}" INCLUDE_DIRS "${incs}")