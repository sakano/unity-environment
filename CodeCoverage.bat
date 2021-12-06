@echo off
cd %~dp0

set UnityPath="C:\Program Files\Unity\Hub\Editor\2021.2.5f1\Editor\Unity.exe"
set CodeCoveragePath=%~dp0CodeCoverage\

echo Playing edit mode test...
%UnityPath% -projectPath %~dp0 -batchmode -debugCodeOptimization -enableCodeCoverage -coverageResultsPath %CodeCoveragePath% -testPlatform editmode -runTests -testResults %CodeCoveragePath%TestResult\EditMode.xml -coverageOptions "generateAdditionalMetrics;assemblyFilters:+MyAssembly"

echo Playing play mode test...
%UnityPath% -projectPath %~dp0 -batchmode -debugCodeOptimization -enableCodeCoverage -coverageResultsPath %CodeCoveragePath% -testPlatform playmode -runTests -testResults %CodeCoveragePath%TestResult\PlayMode.xml -coverageOptions "generateAdditionalMetrics;assemblyFilters:+MyAssembly"

echo Generating result...
%UnityPath% -projectPath %~dp0 -batchmode -debugCodeOptimization -enableCodeCoverage -coverageResultsPath %CodeCoveragePath% -coverageOptions "generateHtmlReport;generateBadgeReport;assemblyFilters:+MyAssembly" -quit

echo CoverageReport has been generated
