# escape=`

FROM microsoft/windowsservercore

# Install chocolatey
RUN @powershell -NoProfile -ExecutionPolicy unrestricted -Command "(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))) >$null 2>&1"

# Install Visual C++ Build Tools, as per: https://chocolatey.org/packages/visualcpp-build-tools
RUN choco install visualcpp-build-tools -version 14.0.25420.1 -y

# Add msbuild to PATH
RUN setx /M PATH "%PATH%;C:\Program Files (x86)\MSBuild\14.0\bin"

# Test msbuild can be accessed without path
RUN msbuild -version

RUN choco install cmake -y --installargs 'ADD_CMAKE_TO_PATH=System'
RUN choco install python -y --version 3.6.4
RUN pip install numpy
RUN choco install git -y

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

RUN mkdir cuda
RUN mkdir build
RUN (new-object System.Net.WebClient).DownloadFile('http://downloads.sourceforge.net/project/swig/swigwin/swigwin-3.0.10/swigwin-3.0.10.zip', 'swigwin.zip')
RUN Expand-Archive .\swigwin.zip; rm swigwin.zip
RUN $oldpath = (Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).path; $newpath = "$oldpath"+';C:\swigwin\swigwin-3.0.10'; [Environment]::SetEnvironmentVariable('Path', "$($newpath)", 'Machine')

#COPY .\command.ps1 \build\
COPY .\command.ps1 \

RUN [Environment]::SetEnvironmentVariable('CUDA_PATH', 'C:\cuda', 'Machine')


CMD [ "powershell.exe" ]