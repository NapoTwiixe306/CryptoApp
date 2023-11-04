import React from 'react';
import Header from './Components/Header/Header';
import { NavigationContainer, useNavigation } from '@react-navigation/native';

import { View } from 'react-native';
import HomePages from './Components/HomePages/HomePages';

export default function App() {

  return (
    <NavigationContainer independent={true}>
      <HomePages />
    </NavigationContainer>
  );
}
