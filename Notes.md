What margin does is to set a space between the container and the screen(Outside of the Container),
whereas the padding is to set a space between the child and the container(Inside of the Container).
--------------------------------------------------------------------------------------------------------------------------
SizedBox is used to separate items inside the container.
--------------------------------------------------------------------------------------------------------------------------
Stateless widget is used when the state of widgets you want to use don't change, 
whereas the statefull widget contains widget that will change with user interaction.
--------------------------------------------------------------------------------------------------------------------------
Constructor

Class({this.attribute,this.attribute});
--------------------------------------------------------------------------------------------------------------------------
TO use hexcolor do: Colors(0xFF*hexcolor*)
--------------------------------------------------------------------------------------------------------------------------
Const is used for immutable variables and it needs to be initialized with a constant value.
Final is used for immutable variables and the value can be specified after the code is compiled(when is running).
--------------------------------------------------------------------------------------------------------------------------
       Dart ternary operator
condition ? doThisIfTrue : doThisIfFalse
--------------------------------------------------------------------------------------------------------------------------
Navigator.of(context).push(MaterialPageRoute(builder: (context) => page(),),); changes to the next page.
Navigator.push(context, MaterialPageRoute(builder: (context) => page(),),);
Navigator.pushNamed(context, 'routename'); USE WHEN USING ROUTES
Navigator.pop(context); destroys the current page and goes back to the previous one.
--------------------------------------------------------------------------------------------------------------------------
Map<KeyType(ej:String), ValueType(ej:int)> phoneBook(mapName){
	Jim(Key): 123456789(Value)
	Pam: 123456789
	Dwight: 123456789
} (create a map)

phoneBook(mapName)[Dwight(Key)] (use a map)
phoneBook['Angela'] = 123456789 (add Key:Value)
--------------------------------------------------------------------------------------------------------------------------
Duration name = Duration(time(seconds): x);
sleep(name);
--------------------------------------------------------------------------------------------------------------------------
initialRoute: '/',
      routes:{
        '/': (context) => Screen0(),
        '/first': (context) => Screen1(),
        '/second': (context) => Screen2(),
      },
--------------------------------------------------------------------------------------------------------------------------
Lifecyclle methods
initState(gets called when the stateful widget is created and inserted into the widget tree)
build(gets called once all the widgets of the screen are created, or when a widgets changes)
deactivated(gets called when it's destroyed)
--------------------------------------------------------------------------------------------------------------------------
try{
	do something thath may fail
}
catch (e(exception or error)){
	catch an exception that occur
	and print it
	print e
}

throw 'text to throw if something is wrong';
--------------------------------------------------------------------------------------------------------------------------
variable ??(is not null) defaultVariable(use this if variable is null)
--------------------------------------------------------------------------------------------------------------------------
return; ends the function where this keyword is written
--------------------------------------------------------------------------------------------------------------------------
static String id = 'welcome'; the static keyword allows to use the variable without needing to create an object. 
--------------------------------------------------------------------------------------------------------------------------
For example: 'WelcomeScreen.id' instead of 'WelcomeScreen().id'
--------------------------------------------------------------------------------------------------------------------------
Streams sends data to you as long as you are 'subscribed' and the moment there is new data.
--------------------------------------------------------------------------------------------------------------------------
Context basically tells to the widget where the parent is
--------------------------------------------------------------------------------------------------------------------------
Model View Controller
Model manages the data (Data and logic)
View manages what goes on to the screen (UI)
Controller intermediary (Mediator)