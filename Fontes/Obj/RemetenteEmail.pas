unit RemetenteEmail;

interface

type
  IRemetenteEmail = interface

  function getLoginRem(): String;
  function getSenhaRem(): String;
  function getNomeRem(): String;
  function getEmailHostRem(): String;
  function getEmailRem(): String;
end;

implementation

end.
