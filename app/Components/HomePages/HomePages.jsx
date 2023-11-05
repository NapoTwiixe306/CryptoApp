import { Text, View, ScrollView } from 'react-native'
import React from 'react'
import styles from './HomePagesStyle'
import BottomBar from '../../Widget/Navbar/BottomBar'

export default function HomePages() {
  return (
    <>
      <ScrollView style={styles.scrollContainer}>
        <View style={styles.parent}>
          <View style={styles.container}>
            <Text style={styles.title}>CryptoExtension</Text>
          </View>
        </View>
      </ScrollView>
      <BottomBar/>
    </>
  )
}
