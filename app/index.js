import React from 'react';
import Header from './Components/Header/Header';
import { NavigationContainer } from '@react-navigation/native';

import { View } from 'react-native';

export default function App() {
  return (
    <NavigationContainer independent={true}>
      <Header />
    </NavigationContainer>
  );
}
