//stolen_from_internet_oddities_pending_removal
var daStrumID:Int = 1;
var noteName:FunkinText = new FunkinText(145, 687, 0, 'notes', 15, false);

function create(){
    switch(PlayState.SONG.meta.displayName){
        case 'bop-hoppie':{
            noteName.text = 'Bob_NOTE_assets';
        }
        case 'egoism':{
            noteName.text = 'Bob_NOTE_assets';
        }
        case 'stop-me':{
            noteName.text = 'Bob_NOTE_assets';
        }
        case 'boiling-point':{
            noteName.text = 'Bob_NOTE_assets';
        }
        case 'think':{
            noteName.text = 'Boppie_NOTE_assets';
        }
    }
    trace(noteName.text, PlayState.SONG.meta.displayName);
}

function onNoteCreation(e) if (e.strumLineID == daStrumID) if (curSong != 'nyan') e.noteSprite = "game/notes/" + noteName.text;

function onStrumCreation(e) if (e.player == daStrumID) if (curSong != 'nyan') e.sprite = "game/notes/" + noteName.text;