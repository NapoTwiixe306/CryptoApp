import { StyleSheet, Text, View, ScrollView } from 'react-native'
import React from 'react'

export default function HorizontalCard() {
  return (
    <View>
        <ScrollView horizontal={true}  showsHorizontalScrollIndicator={false} style={styles.parent}>
            <View style={[styles.card, styles.cardElevated]}>
                <Text>Tape</Text>
            </View>
            <View style={[styles.card, styles.cardElevated]}>
                <Text>Tape</Text>
            </View>
            <View style={[styles.card, styles.cardElevated]}>
                <Text>Tape</Text>
            </View>
            <View style={[styles.card, styles.cardElevated]}>
                <Text>Tape</Text>
            </View>
            <View style={[styles.card, styles.cardElevated]}>
                <Text>Tape</Text>
            </View>
        
        </ScrollView>
    </View>
  )
}

const styles = StyleSheet.create({
    secContainer: {
        margin: 15
    },
    card: {
        flex: 1,
        alignItems: 'center',
        justifyContent: 'center',
        borderRadius: 15,
        margin: 10,
        width: 100,
        height: 100
    },
    cardElevated: {
        backgroundColor: '#CAD5E2'
    }
})