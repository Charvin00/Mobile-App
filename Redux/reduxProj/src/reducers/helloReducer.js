
import { PRESSED_HELLO_BUTTON } from '../actions/types';

const initialState = {
    helloText:'Yo Bro!',
    pressedButton: false,
};

export default (state = initialState, action) => {
    switch(action.type) {
        case PRESSED_HELLO_BUTTON:
            return {...state, pressedButton: true, helloText:"You pressed it man!"};
        default:
            return state;
    }
}