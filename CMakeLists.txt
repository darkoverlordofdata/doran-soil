cmake_minimum_required ( VERSION 3.1 )
###################################################################################
#
#   Library: soil
#
###################################################################################
project ( soil VERSION 0.0.1 )

# Includes: 
list ( APPEND INCLUDE .lib/soil/include )

# C Sources: 
list ( APPEND CSOURCE .lib/soil/src/image_DXT.c )
list ( APPEND CSOURCE .lib/soil/src/SOIL.c )
list ( APPEND CSOURCE .lib/soil/src/image_helper.c )
list ( APPEND CSOURCE .lib/soil/src/stb_image_aug.c )

# Vala Sources: 

# Vapis: 
list ( APPEND VAPI .lib/soil/src/soil.vapi )

# Vapidir: 

## Export to the parent scope:
set ( SOIL true PARENT_SCOPE )
set ( INCLUDES "${INCLUDES};${INCLUDE}" PARENT_SCOPE )
set ( C_SOURCES "${C_SOURCES};${CSOURCE}" PARENT_SCOPE )

set ( CUSTOM_VAPIS "${CUSTOM_VAPIS};${VAPI}" PARENT_SCOPE )




# (generated from template: package. Do not modify. )
