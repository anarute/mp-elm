module Login.Types exposing (..)

import Http
import User.Types as User


type alias Model =
    { user : User.Model
    , username : String
    , password : String
    , token : String
    , error : String
    }


type alias LoginModel =
    { user : User.Model
    , token : String
    }


type Msg
    = SetUsername String
    | SetPassword String
    | Login
    | OnFetchLogin (Result Http.Error LoginModel)
    | NoOp