extends Node

var jsConsoleCallback = JavaScriptBridge.create_callback(consoleLog)

# Example usage
func _ready():
    if OS.has_feature('web'):
        JavaScriptBridge.eval("""
            console.log('The JavaScriptBridge singleton is available')
        """)
    else:
        print("The JavaScriptBridge singleton is NOT available")
    
    var mathJS = JavaScriptBridge.get_interface("math")
    print(mathJS.add(1, 2))

func consoleLog(args):
    print(args)