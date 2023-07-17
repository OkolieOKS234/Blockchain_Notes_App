import List  "mo:base/List";
import Text "mo:base/Text";
import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

// import Debug "mo:base/Debug";


actor Dkeeper{
  // First create an object in Motoko of items to be stored
  public type Note={
    title: Text;
    content: Text;
  };
  // Then an array to store note object
  stable var notes: List.List<Note> = List.nil<Note>();


  // Allowing us to send some data using the function

  // SIMPLE CRUD
  public func createNote(titleText:Text, contentText:Text){
    let newNote: Note = {
      title = titleText;
      content = contentText;
    };
    // We then push the object
    notes := List.push(newNote, notes);
    Debug.print(debug_show(notes))

  };


// Reading the Notes function
public query func readNotes(): async [Note]{
  // Convert our list items to array
  return List.toArray(notes);

};

// REMOVE A NOTE
public func removeNote(id: Nat){
  // TDA: Take, Drop Append
let listFront = List.take(notes, id);
let listBack = List.drop(notes, id +1);
notes := List.append(listFront, listBack);
}



}