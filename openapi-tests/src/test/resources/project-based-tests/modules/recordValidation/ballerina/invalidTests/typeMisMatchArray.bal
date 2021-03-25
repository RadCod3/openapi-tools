import ballerina/http;

type TypeMisMatchArray record {
    int id;
    string username;
    string firstName;
    string lastName;
    string email;
    string password;
    string [] phone;
    int userStatus;
};

service hello on new http:Listener(9090) {

    resource function sayHello(http:Caller caller,
        http:Request req, TypeMisMatchArray body ) returns error? {
    }
}

