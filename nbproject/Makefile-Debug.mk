#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/src/Palindrome.o \
	${OBJECTDIR}/src/StringServices.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/palindrome.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/palindrome.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/palindrome ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/src/Palindrome.o: src/Palindrome.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Palindrome.o src/Palindrome.cpp

${OBJECTDIR}/src/StringServices.o: src/StringServices.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -g -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/StringServices.o src/StringServices.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-conf ${TESTFILES}
${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/TestStringPalindrome.o ${TESTDIR}/tests/TestStringServices.o ${TESTDIR}/tests/TestVectorPalindrome.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} ../googletest/dist/Debug/MinGW-Windows/libgoogletest.a 


${TESTDIR}/tests/TestStringPalindrome.o: tests/TestStringPalindrome.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} $@.d
	$(COMPILE.cc) -g -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -I. -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -MMD -MP -MF $@.d -o ${TESTDIR}/tests/TestStringPalindrome.o tests/TestStringPalindrome.cpp


${TESTDIR}/tests/TestStringServices.o: tests/TestStringServices.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} $@.d
	$(COMPILE.cc) -g -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -I. -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -MMD -MP -MF $@.d -o ${TESTDIR}/tests/TestStringServices.o tests/TestStringServices.cpp


${TESTDIR}/tests/TestVectorPalindrome.o: tests/TestVectorPalindrome.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} $@.d
	$(COMPILE.cc) -g -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -I. -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -MMD -MP -MF $@.d -o ${TESTDIR}/tests/TestVectorPalindrome.o tests/TestVectorPalindrome.cpp


${OBJECTDIR}/main_nomain.o: ${OBJECTDIR}/main.o main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} $@.d;\
	    $(COMPILE.cc) -g -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -Dmain=__nomain -MMD -MP -MF $@.d -o ${OBJECTDIR}/main_nomain.o main.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/main.o ${OBJECTDIR}/main_nomain.o;\
	fi

${OBJECTDIR}/src/Palindrome_nomain.o: ${OBJECTDIR}/src/Palindrome.o src/Palindrome.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Palindrome.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} $@.d;\
	    $(COMPILE.cc) -g -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -Dmain=__nomain -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Palindrome_nomain.o src/Palindrome.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Palindrome.o ${OBJECTDIR}/src/Palindrome_nomain.o;\
	fi

${OBJECTDIR}/src/StringServices_nomain.o: ${OBJECTDIR}/src/StringServices.o src/StringServices.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/StringServices.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} $@.d;\
	    $(COMPILE.cc) -g -I../../gtest-1.7.0 -I../../gtest-1.7.0/include -Dmain=__nomain -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/StringServices_nomain.o src/StringServices.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/StringServices.o ${OBJECTDIR}/src/StringServices_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/palindrome.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
