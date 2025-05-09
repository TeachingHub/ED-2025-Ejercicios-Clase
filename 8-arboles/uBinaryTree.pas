unit uBinaryTree;

interface
  type
    tbinaryTree = ^tnode;

    tnode = RECORD
      info: integer;
      hi, hd : tbinaryTree;
    end;

  // Basic methods
  procedure initialize(var a:tbinaryTree);
  function is_empty(a:tbinaryTree): boolean;
  procedure add(var a:tbinaryTree; elem: integer);
  function in_tree(a:tbinaryTree; elem: integer): boolean;
  procedure remove(var a:tbinaryTree; elem: integer);

  // Traversal algorithms
  procedure preorder(a: tbinaryTree);
  procedure inorder(a: tbinaryTree);
  procedure postorder(a: tbinaryTree);

  // Other methods
  function node_count(a:tbinaryTree): integer;
  procedure get_hi(a:tbinaryTree; var b:tbinaryTree);
  procedure get_hd(a:tbinaryTree; var b:tbinaryTree);

  procedure copy_tree(a:tbinaryTree; var b:tbinaryTree);
  function profundidad_max(a:tbinaryTree): integer;
  function profundidad_min(a:tbinaryTree): integer;


implementation


procedure initialize(var a:tbinaryTree);
begin
  a:= nil;
end;

function is_empty(a:tbinaryTree): boolean;
begin
  is_empty:= a=nil;
end;

function in_tree(a: tbinaryTree; elem : integer) : boolean;
begin
  if a = NIL then in_tree := FALSE
  else if a^.info = elem then in_tree := TRUE
  else in_tree := (in_tree(a^.hd, elem)) or (in_tree(a^.hi, elem))
end;

procedure add(var a :tbinaryTree; elem : integer);
begin
  if a = NIL then begin
    new(a);
    a^.info := elem;
    a^.hi := NIL;
    a^.hd := NIL;
  end
  else if a^.info < elem then add(a^.hd, elem)
  else if a^.info > elem then add(a^.hi, elem)
end;

procedure remove(var a:tbinaryTree; elem: integer);
begin
  if a = NIL then exit;
  if a^.info = elem then begin
    if (a^.hi = nil) and (a^.hd = nil) then begin
      dispose(a);
      a := nil;
    end else if (a^.hi = nil) then begin
      a := a^.hd;
    end else if (a^.hd = nil) then begin
      a := a^.hi;
    end else begin
      // Find the minimum in the right subtree
      var minNode: tbinaryTree := a^.hd;
      while minNode^.hi <> nil do
        minNode := minNode^.hi;
      a^.info := minNode^.info;
      remove(a^.hd, minNode^.info);
    end;
  end else if elem < a^.info then remove(a^.hi, elem)
  else remove(a^.hd, elem)

end;

procedure visit(x:integer);
begin
  writeln(x)
end;

procedure preorder(a: tbinaryTree);
begin
  if (a <> NIL) then begin
    visit(a^.info);
    preorder(a^.hi);
    preorder(a^.hd)
  end
end;

procedure inorder(a: tbinaryTree);
begin
  if (a <> NIL) then begin
    inorder(a^.hi);
    visit(a^.info);
    inorder(a^.hd)
  end
end;

procedure postorder(a: tbinaryTree);
begin
  if (a <> NIL) then begin
    postorder(a^.hi);
    postorder(a^.hd);
    visit(a^.info);
  end
end;


procedure get_hi(a: tbinaryTree; var b: tbinaryTree);
var
  hi: tbinaryTree;
begin
  if a = nil then
    b := nil
  else
  begin
    hi := a^.hi;
    new(b);
    b^.info := hi^.info;
    b^.hi := hi^.hi;
    b^.hd := hi^.hd;
  end;
end;

procedure get_hd(a: tbinaryTree; var b: tbinaryTree);
var
  hd: tbinaryTree;
begin
  if a = nil then
    b := nil
  else
  begin
    hd := a^.hd;
    new(b);
    b^.info := hd^.info;
    b^.hi := hd^.hi;
    b^.hd := hd^.hd;
  end;
end;

function node_count(a:tbinaryTree): integer;
begin
    if (a = NIL) then node_count := 0
    else node_count := 1 + node_count(a^.hd) + node_count(a^.hi)
end;

procedure copy_tree(a:tbinaryTree; var b:tbinaryTree);
begin
  if a = nil then b := nil
  else begin
    new(b);
    b^.info := a^.info;
    copy_tree(a^.hi, b^.hi);
    copy_tree(a^.hd, b^.hd);
  end;
end;

end.
