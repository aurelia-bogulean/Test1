# Robot Framework Sessions 1

This is the quick cheat sheet for the Robot Framework session 1

## Prequisites:

* Python --> https://www.python.org/downloads/
	* Remember to check the checkbok "Add Python To Environment Variables"
* Robot Framework
* Editor (choose any)
	* RED --> https://github.com/nokia/RED
	* Eclipse --> https://www.eclipse.org/
		* RED Plugin --> Marketplace --> RED Robot Editor
	* Atom --> https://atom.io/
		* Robot Framework Language (language-robot-framework)
	* RIDE --> https://github.com/robotframework/RIDE
	* any other like NetBeans, Visual Code, Notepad++, etc

## Install Robot Framework
	
* From command line:
	
```
pip install robotframework
```
	
## Install Robot libraries:

```
pip install robotframework-seleniumlibrary
```
	
## Add driver for browser

* Recommended to use Chrome
* http://chromedriver.chromium.org/downloads
* Copy to somewhere in PATH eg. Python installation folder
	* Should be by default C:\Users\<username>\AppData\Local\Programs\Python\Python37
* For Firefox Geckodriver: https://github.com/mozilla/geckodriver/releases
* For IE/Edge: https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/
* For Safari: https://webkit.org/blog/6900/webdriver-support-in-safari-10/
		
## Run the tests
	
#### From commandline

```	
robot tests
```
	
#### Individual suite by tag

```	
robot -i 01 tests
```
	
#### From Eclipse/RED

```	
Run -> Run or CTRL+F11
```

If the "robot" command does not work, check that you have BOTH of these in path:

```	
C:\Users\<username>\AppData\Local\Programs\Python\Python37\Scripts
C:\Users\<username>\AppData\Local\Programs\Python\Python37\
```
	
## Extra - Install PhantomJS

* Download zip http://phantomjs.org/download.html
* Unzip eg. to _c:/phantomjs_
	* If installed to anywhere else, you need to modify the *${PHANTOMCMD}* variable
	
# Links

## Tools etc

https://www.sourcetreeapp.com/

https://www.python.org/downloads/

http://chromedriver.chromium.org/downloads

https://github.com/nokia/RED/releases/latest

https://www.eclipse.org/downloads/

https://atom.io/download/windows_x64

https://www.jetbrains.com/pycharm/download/

http://phantomjs.org/download.html

## Documentation

http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html

http://robotframework.org/robotframework/latest/libraries/BuiltIn.html

http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

http://robotframework.org/robotframework/latest/libraries/Process.html

https://www.w3schools.com/csSref/css_selectors.asp 

https://www.w3schools.com/cssref/trysel.asp

https://devhints.io/xpath

https://github.com/detro/ghostdriver

## Extra stuff

http://robotframework.org/

https://blog.testproject.io/2016/11/22/robot-framework-introduction/

https://blog.codecentric.de/en/2012/03/robot-framework-tutorial-overview/

https://www.youtube.com/watch?v=8h5knh2jLCA&list=PLhW3qG5bs-L9l2I8K8dEhw6HXy-Z-33w3

https://www.quora.com/What-are-the-reasons-for-Robot-Framework-not-widely-being-used

https://www.joecolantonio.com/automation-testing-framework/

https://www.joecolantonio.com/top-8-essential-javascript-automation-frameworks/