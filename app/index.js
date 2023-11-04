import React from 'react';
import { NavigationContainer } from '@react-navigation/native';

import HomePages from './Components/HomePages/HomePages';

export default function App() {

  return (
    <NavigationContainer independent={true}>
      <HomePages />
    </NavigationContainer>
  );
}
