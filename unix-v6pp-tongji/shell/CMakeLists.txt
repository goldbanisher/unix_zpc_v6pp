#[[
    Unix V6++ Shell 构造文件
    创建于 2024年4月28日 上海市嘉定区安亭镇

    by 2051565 GTY
]]


cmake_minimum_required(VERSION 3.20)


string(TIMESTAMP build_time_iso8601 UTC)  # example: 2024-04-19T13:39Z
string(TIMESTAMP build_time_human_readable "%B %d, %Y %H:%M:%S %Z")
set(V6PP_BUILD_TIME_ISO8601 ${build_time_iso8601})
set(V6PP_BUILD_TIME_HUMAN_READABLE ${build_time_human_readable})


# 头文件路径。
include_directories("${PROJECT_SOURCE_DIR}")
include_directories("${PROJECT_SOURCE_DIR}/../lib/include")
include_directories("${PROJECT_SOURCE_DIR}/../lib/src")


# GCC(g++) 编译选项。

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -nostartfiles")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-builtin")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -nostdinc")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-pic")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-pie")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -no-pie")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -nostdlib")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-stack-protector")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fomit-frame-pointer")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-unwind-tables")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-asynchronous-unwind-tables")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-exceptions")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mno-red-zone")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mno-mmx")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mno-sse")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mno-sse2")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-unused-variable")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fdiagnostics-color=always")

set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS}")


#[[ 
    项目构造产物
]]
file(GLOB_RECURSE C_SOURCE_FILES *.c)
set(CMAKE_CXX_LINK_EXECUTABLE "ld --whole-archive -Ttext-segment=0x400000 <LINK_FLAGS> -e main1 -static <LINK_LIBRARIES> <OBJECTS> -o <TARGET>")
set(CMAKE_C_LINK_EXECUTABLE "${CMAKE_CXX_LINK_EXECUTABLE}")


function(addExe exeName src exeFormat binDir)

    set(taskName "${exeName}-${exeFormat}")
    add_executable(${taskName} ${src})
    target_link_libraries(${taskName} ${CMAKE_SOURCE_DIR}/../target/objs/libv6pptongji.a)

    set_target_properties(
        ${taskName} 
        PROPERTIES 
            COMPILE_FLAGS "-m32" 
            LINK_FLAGS "-m32 -m ${exeFormat}"
    )

    add_custom_command(
        TARGET ${taskName} POST_BUILD
        COMMAND
            ${CMAKE_COMMAND} -E copy 
                $<TARGET_FILE:${taskName}> 
                ${binDir}/${exeName}
    )

    set(ASM_DUMP_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../target/asm-dump")
    file(MAKE_DIRECTORY ${ASM_DUMP_DIR})

    if (0)  # optional
        add_custom_command(
            TARGET ${taskName} POST_BUILD
            COMMAND
                objdump -D ${binDir}/${exeName} > ${ASM_DUMP_DIR}/${taskName}.full.asm
        )
    endif()
endfunction(addExe)


addExe(Shell.elf.exe "${C_SOURCE_FILES}" "elf_i386" "${CMAKE_CURRENT_SOURCE_DIR}/../target/objs")
addExe(Shell.exe "${C_SOURCE_FILES}" "i386pe" "${CMAKE_CURRENT_SOURCE_DIR}/../target/objs")

