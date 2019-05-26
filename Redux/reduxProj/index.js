
import { AppRegistry } from 'react-native';
import App from './src/App';
import {name as appName} from './app.json';
import React from 'react';
import { Provider } from 'react-redux';
import { createStore } from 'redux';
import reducer from './src/reducers/counterReducer';

const store = createStore(reducer);

const AppContainter = () =>
    <Provider store={store} >
        <App/>
    </Provider>;

AppRegistry.registerComponent(appName, () => AppContainter);
