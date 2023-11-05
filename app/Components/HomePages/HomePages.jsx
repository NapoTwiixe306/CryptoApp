import { Text, View } from 'react-native'
import React from 'react'
import styles from './HomePagesStyle'
import BottomBar from '../../Widget/Navbar/BottomBar'

export default function HomePages() {
  return (
    <>
      <BottomBar/>
      <View>
        <Text style={styles.title}>HomePages</Text>
      </View>
    </>
  )
}
