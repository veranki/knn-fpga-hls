<project xmlns="com.autoesl.autopilot.project" name="test_3-nn.prj" top="digitrec">
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../../data" sc="0" tb="1" cflags=" "/>
        <file name="../../digitrec_test.cpp" sc="0" tb="1" cflags=" -DK_CONST=3"/>
        <file name="digitrec.cpp" sc="0" tb="false" cflags="-DK_CONST=3"/>
    </files>
    <solutions xmlns="">
        <solution name="test_solution" status="active"/>
    </solutions>
</project>

