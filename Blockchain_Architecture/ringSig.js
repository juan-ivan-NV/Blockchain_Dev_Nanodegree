// INSTALLATION: npm install lrs
var lrs = require('lrs');

// 3 people generate their public/private key pairs
var alice = lrs.gen();
var bob = lrs.gen();
var eve = lrs.gen();

// We are gettinh all the public keys and storing in "group"
var group = [alice, bob, eve].map((m) => m.publicKey);

// Alice signs a message on behalf of one of the 3
var signed1 = lrs.sign(group, alice, "Group Signing");

// Anyone is able to verify that one of them signed that message
var verifyed = lrs.verify(group, signed1, "Group Signing")
console.log("The sign has been verified as " + verified);

// If that same person signs another message...
//var signed2 = lrs.sign(group, alice, "Signing again");

var signed2 = lrs.sign(group, bob, "Group Signing");

// we are able to tell the signature came from the same person
// By comparing signed1 and signed2
var compared = lrs.link(signed1, signed2)

if(compared == true) {
    console.log('Both Signatures are from the same person');
} else {
    console.log('Both Signatures are not from the same person');
}