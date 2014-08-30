import std.stdio;
import std.string;
import std.traits;
import std.conv;
import std.functional;
import core.memory;
import dotherside;
import dobject;
import dslot;
import dsignal;

class MyObject : DObject 
{
  this()
  {
    foo = registerSlot("foo", &_foo);
    bar = registerSlot("bar", &_bar);
    nameChanged = registerSignal!(string)("nameChanged");
    tor = registerSlot("tor", &_tor);
  }
  
  DSlot!(void delegate(int)) foo;
  void _foo(int fooValue)
  {
    writeln("D: Called foo slot with argument ", fooValue , "!!");
  }
  
  DSlot!(int delegate(int)) bar;
  int _bar(int barValue)
  {
    writeln("D: Called bar slot with argument " , barValue, "!!");
    return 666;
  }

  DSlot!(string delegate(string)) tor;
  string _tor (string torValue)
  {
    writeln("D: Called tor slot with argument ", torValue, "!!");
    return "2343";
  }

  DSignal!(string) nameChanged;
  //DSignal!(string, int, bool) complexChanged;
}

void main()
{
  try
  {
    auto app = new GuiApplication;
    scope(exit) clear(app);

    auto view = new QuickView;
    scope(exit) clear(view);
    
    auto myObject = new MyObject();
    
    auto context = view.rootContext();
    context.setContextProperty("myObject", new QVariant(myObject));
    
    view.setSource("Test.qml");
    view.show();

    myObject.nameChanged("prova");

    app.exec();
  }
  catch 
  {}
}