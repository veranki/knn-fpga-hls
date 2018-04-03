<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="2-nn.prj" top="digitrec">
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../data" sc="0" tb="1" cflags=" "/>
        <file name="../../digitrec_test.cpp" sc="0" tb="1" cflags=" -DK_CONST=2"/>
        <file name="digitrec.cpp" sc="0" tb="false" cflags="-DK_CONST=2"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

