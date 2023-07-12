import List  "mo:base/List";


actor Dkeeper{
  public type Note={
    title: Text;
    content: Text;
  };
  var notes: List.List<Note> = List.nil<Note>();
}