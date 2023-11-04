import React from 'react'
import { Text, View, TouchableOpacity } from 'react-native'
import { styles } from './HeaderStyle'
import { Link } from 'expo-router'
export default function Header() {
  
  return (
    <View style={styles.container}>
      <Text style={styles.title}>CryptoExtension</Text>
      <Link href="/Components/Header/HomePages">About</Link>
    </View>
  )
}
