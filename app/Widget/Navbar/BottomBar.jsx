import React from 'react';
import { View, Text } from 'react-native';
import { Link } from 'expo-router';
import { FontAwesome } from '@expo/vector-icons';

import styles from './BottomBarStyle';

export default function BottomBar() {
  return (
    <View style={styles.container}>
      <Link style={styles.tab} href="/Components/Header/Header">
        <Text style={[styles.tabText, { textAlign: 'center' }]}>Home</Text>
      </Link>
      <Link style={styles.tab} href="/Components/Contact/Contact">
        <Text style={[styles.tabText, { textAlign: 'center' }]}>Contact</Text>
      </Link>
      <Link style={styles.tab} href="/Components/About/About">
        <Text style={[styles.tabText, { textAlign: 'center' }]}>About</Text>
      </Link>
    </View>
  );
}