import ballerina/http;
import ballerina/constraint;

@constraint:String {maxLength: 23}
public type HobbyItemsString string;

@constraint:String {minLength: 7}
public type PersonDetailsItemsString string;

@constraint:String {length: 10, pattern: re `^[a-zA-Z0-9_]+$`}
public type PersonNIC string;

@constraint:Float {maxValue: 445.4}
public type PersonFeeItemsNumber float;

@constraint:Int {maxValue: 67 }
public type PersonLimitItemsInteger int;

@constraint:Array {maxLength: 5, minLength: 2}
public type Hobby HobbyItemsString[];

public type Person record {
    Hobby hobby?;
    @constraint:Array {maxLength: 5}
    PersonDetailsItemsString[] Details?;
    int id;
    PersonNIC nic?;
    PersonFeeItemsNumber[] fee?;
    # The maximum number of items in the response (as set in the query or by default).
    PersonLimitItemsInteger[] 'limit?;
};

service /payloadV on new http:Listener(9090) {
    resource function post pet(@http:Payload Person body) returns error? {
        return;
    }
}